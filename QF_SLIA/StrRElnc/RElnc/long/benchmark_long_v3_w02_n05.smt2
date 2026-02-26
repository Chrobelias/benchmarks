(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (= y (str.++ x z "46")))

(assert (str.in_re y (re.+ (re.++ (re.range "0" "6") (re.* (re.range "0" "8"))))))
(assert (str.in_re z (re.* (str.to_re "5"))))
(assert (str.in_re x (re.++ (re.union (re.+ (re.range "0" "4")) (str.to_re "39")) (str.to_re "616"))))

(assert (>= (+ (* 2 (str.len x)) (* (- 2) (str.len y)) (* 7 (str.len z))) 91))
(assert (> (+ (* 4 (str.to_int x)) (* (- 10) (str.to_int y)) (* (- 7) (str.to_int z))) 16))

(check-sat)