(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.union (str.to_re "22") (re.* (re.+ (re.range "0" "7"))))))
(assert (str.in_re y (re.++ (str.to_re "5") (re.+ (re.+ (re.* (str.to_re "9")))))))
(assert (str.in_re z (re.++ (str.to_re "6") (re.* (re.+ (str.to_re "31"))))))

(assert (>= (+ (* (- 4) (str.len x)) (* 8 (str.len y)) (* (- 6) (str.to_int x)) (* 10 (str.to_int y))) 21))

(check-sat)