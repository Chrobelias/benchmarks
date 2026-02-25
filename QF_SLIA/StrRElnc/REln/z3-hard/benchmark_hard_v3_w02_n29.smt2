(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.union (re.* (str.to_re "4")) (re.union (str.to_re "71") (re.+ (str.to_re "0"))))))
(assert (str.in_re y (re.+ (re.++ (re.range "0" "6") (re.union (str.to_re "68") (re.+ (str.to_re "79")))))))
(assert (str.in_re z (re.* (re.++ (str.to_re "15") (str.to_re "84")))))

(assert (> (+ (* (- 2) (str.len y)) (* 10 (str.len z)) (* (- 10) (str.to_int x)) (* (- 10) (str.to_int y))) 31))

(check-sat)