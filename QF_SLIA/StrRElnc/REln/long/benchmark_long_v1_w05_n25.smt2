(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (str.to_re "33") (re.++ (re.range "4" "7") (re.+ (re.range "1" "8"))))))

(assert (<= (* (- 5) (str.len x)) 64))
(assert (= (+ (* 3 (str.len x)) (* 8 (str.to_int x))) 80))
(assert (< (* 8 (str.to_int x)) 48))
(assert (= (* (- 3) (str.to_int x)) 15))

(check-sat)