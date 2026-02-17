(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "370") (re.+ (re.++ (str.to_re "62") (re.+ (re.range "2" "4")))))))

(assert (<= (* (- 4) (str.to_int x)) 6))
(assert (< (* (- 2) (str.len x)) 69))
(assert (<= (+ (* (- 2) (str.len x)) (* 7 (str.to_int x))) 63))

(check-sat)