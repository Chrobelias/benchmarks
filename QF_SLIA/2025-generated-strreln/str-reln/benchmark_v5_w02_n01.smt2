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

(assert (str.in_re x (re.+ (str.to_re "31"))))
(assert (str.in_re y (re.* (re.* (str.to_re "76")))))
(assert (str.in_re z (re.* (re.* (re.+ (str.to_re "58"))))))
(assert (str.in_re a (re.* (str.to_re "3"))))
(assert (str.in_re b (re.++ (re.* (re.* (re.range "2" "9"))) (str.to_re "434"))))

(assert (= (+ (* 2 (str.to_int x)) (* (- 7) (str.to_int y)) (* (- 3) (str.to_int z)) (* (- 7) (str.to_int a)) (* (- 9) (str.to_int b))) 48))
(assert (= (+ (- (str.len x)) (* 7 (str.len y)) (* (- 7) (str.len z)) (* 2 (str.len a)) (* (- 2) (str.len b))) 47))

(check-sat)