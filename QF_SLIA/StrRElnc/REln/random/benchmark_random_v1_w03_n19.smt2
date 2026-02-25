(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.+ (re.* (re.* (str.to_re "352")))))))

(assert (< (+ (* 7 (str.len x)) (* (- 9) (str.to_int x))) 72))
(assert (> (* 8 (str.to_int x)) 56))

(check-sat)