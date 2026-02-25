(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (= y (str.++ "94" x)))

(assert (str.in_re y (re.union (re.+ (re.range "4" "9")) (re.++ (str.to_re "170") (re.* (str.to_re "28"))))))
(assert (str.in_re x (re.+ (re.union (str.to_re "61") (re.union (re.range "0" "7") (str.to_re "170"))))))

(assert (>= (+ (* (- 8) (str.len x)) (* (- 8) (str.to_int x))) 35))

(check-sat)