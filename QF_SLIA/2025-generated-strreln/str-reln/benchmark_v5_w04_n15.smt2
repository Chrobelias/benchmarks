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

(assert (str.in_re x (re.++ (re.union (re.* (re.range "3" "9")) (str.to_re "8")) (re.+ (str.to_re "5")))))
(assert (str.in_re y (re.* (re.++ (re.range "4" "8") (re.++ (re.+ (str.to_re "98")) (str.to_re "44"))))))
(assert (str.in_re z (re.union (re.union (str.to_re "41") (re.+ (str.to_re "38"))) (re.range "7" "9"))))
(assert (str.in_re a (re.+ (re.* (re.union (str.to_re "660") (re.+ (str.to_re "41")))))))
(assert (str.in_re b (re.+ (str.to_re "64"))))

(assert (>= (+ (* 5 (str.len x)) (* (- 3) (str.len y)) (* 6 (str.len z)) (* 9 (str.len a)) (- (str.len b))) 97))
(assert (<= (+ (str.to_int x) (* (- 8) (str.to_int y)) (* (- 6) (str.to_int z)) (* (- 5) (str.to_int b))) 94))
(assert (= (+ (* (- 10) (str.to_int x)) (* (- 3) (str.to_int y)) (* (- 5) (str.to_int z)) (* (- 7) (str.to_int a)) (* 6 (str.to_int b))) 65))
(assert (> (+ (* 4 (str.len x)) (* 10 (str.len y)) (* (- 3) (str.len z)) (* (- 10) (str.len a)) (* (- 7) (str.len b))) 25))

(check-sat)