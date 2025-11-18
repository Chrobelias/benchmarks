(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)
(declare-const b String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))
(assert (>= (str.to_int b) 0))

(assert (str.in_re x (re.+ (re.+ (re.++ (str.to_re "59") (re.+ (str.to_re "658")))))))
(assert (str.in_re y (re.++ (re.+ (re.+ (str.to_re "72"))) (re.* (str.to_re "2")))))
(assert (str.in_re z (re.* (re.range "6" "8"))))
(assert (str.in_re a (re.* (re.++ (str.to_re "758") (re.range "2" "8")))))
(assert (str.in_re b (re.++ (re.+ (str.to_re "13")) (re.++ (re.+ (re.range "7" "9")) (str.to_re "114")))))

(assert (<= (+ (* (- 6) (str.len y)) (* (- 4) (str.len a)) (* 3 (str.to_int b))) 54))
(assert (< (+ (* 10 (str.len x)) (- (str.len y)) (* (- 7) (str.len z)) (* (- 9) (str.len a)) (* 7 (str.len b))) 32))
(assert (> (+ (* 3 (str.len b)) (* (- 10) (str.to_int y))) 88))

(check-sat)