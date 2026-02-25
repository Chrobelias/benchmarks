(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.++ (re.union (re.+ (re.range "0" "8")) (str.to_re "634")) (str.to_re "57")))))

(assert (< (* (- 7) (str.to_int x)) 38))
(assert (<= (* 8 (str.len x)) 52))

(check-sat)