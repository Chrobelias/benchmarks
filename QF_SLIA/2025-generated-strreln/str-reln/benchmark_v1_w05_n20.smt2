(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.range "5" "7") (re.++ (re.+ (str.to_re "585")) (str.to_re "213")))))

(assert (>= (* 3 (str.to_int x)) 24))
(assert (< (* (- 9) (str.to_int x)) 51))
(assert (> (* 8 (str.len x)) 63))
(assert (= (+ (* 3 (str.len x)) (* (- 8) (str.to_int x))) 72))

(check-sat)